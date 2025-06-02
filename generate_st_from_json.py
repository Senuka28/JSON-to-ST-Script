import os
import json

# configuration
json_file = 'kernel.json'

# st file saved here
output_dir = 'st_file'

# make output directory
os.makedirs(output_dir , exist_ok=True)

# convert json test to var section format in ST
def format_var_section(section):
    if 'vars' not in section: # no vars so return empty string
        return ''

    result = f"{section['name']}\n" # start with var section like VAR_INPUT if "name": "VAR_INPUT"

    for var in section['vars']: # iterate throug all the vars
        var_line = f"    {var['name']} : {var['type']};" # format of "var name" : "var type";

        if 'description' in var: # if description add inline comment
            var_line += f" (* {var['description']} *)"

        result += var_line + "\n"

    result += "END_VAR\n" # finish this var section

    return result

# convert main json code into st for function or function block
def json_to_st(section):
    name = section['name']
    type = section['type']
    return_type = section.get('returnType')
    interface_sections = section.get('if', [])
    code = section.get('code', '')

    # header for function or function block
    header = f"{type.upper()} {name}"
    if type == "function" and return_type:
        header += f" : {return_type}"  # add return type only for functions
    header += "\n"

    # finally format all interface sections and join in body of code
    body = ''.join([format_var_section(section) for section in interface_sections])

    # concat everything into ST format
    final_code = header + body + '\n' + code + '\nEND_' + type.upper() + '\n'

    return name, final_code  # return name and ST code


# open json file and parse
with open(json_file, 'r') as f:
    kernel_data = json.load(f)

# iterate through namespaces
for ns in kernel_data.get("namespaces", []):
    
    # handle functions (like assertEqual_UINT)
    for fc in ns.get("fcs", []):
        name, st_code = json_to_st(fc)  # generate ST
        with open(os.path.join(output_dir, f"{name}.ST"), 'w') as f:  # write to file
            f.write(st_code)

    # handle function blocks (like utTestSuite)
    for fb in ns.get("fbs", []):
        name, st_code = json_to_st(fb)  # generate ST
        with open(os.path.join(output_dir, f"{name}.ST"), 'w') as f:  # write to file
            f.write(st_code)

# print message showing output location
print("ST files generated in:", output_dir)
