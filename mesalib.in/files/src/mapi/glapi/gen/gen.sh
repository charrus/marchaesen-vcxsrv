set -x
python3 ./glX_proto_size.py -m size_h --only-set --header-tag _INDIRECT_SIZE_H_ > indirect_size.h
python3 ./glX_proto_size.py -m size_c --only-set > indirect_size.c
python3 ./gl_gentable.py -f gl_and_es_API.xml > glapi_gentable.c
python3 ./gl_table.py -f gl_and_es_API.xml -m dispatch > dispatch.h
# python3 ./marshal_generated_h.py gl_and_es_API.xml 8 > marshal_generated.h
# ./gl_offsets.py > glapioffsets.h
# python3 ./gl_apitemp.py -f gl_and_es_API.xml > glapitemp.h
# python3 ./gl_procs.py -f gl_and_es_API.xml > glprocs.h

python3 ./glX_proto_send.py -m proto > indirect.c
python3 ./glX_proto_send.py -m init_h > indirect.h
python3 ./glX_proto_send.py -m init_c > indirect_init.c

python3 ./gl_enums.py -f ../registry/gl.xml > enums.c
#python3 ./api_exec_init.py -f gl_and_es_API.xml > api_exec_init.c
#python3 ./api_exec_decl_h.py -f gl_and_es_API.xml > api_exec_decl.h
#python3 ./api_save_init_h.py -f gl_and_es_API.xml > api_save_init.h
#python3 ./api_save_h.py -f gl_and_es_API.xml > api_save.h
cp ../../mapi_abi.py .
python3 ./mapi_abi.py --printer glapi gl_and_es_API.xml > glapi_mapi_tmp.h

