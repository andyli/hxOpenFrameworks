#include <hx/CFFI.h>

#include "ofMain.h"
#include "ofxShader.h"

//ofxShader
DEFINE_KIND(_ofxShader);

void delete_ofxShader(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	delete shader;
}

value _ofxShader_new() {
	value ret = alloc_abstract(_ofxShader, new ofxShader());
	val_gc(ret, delete_ofxShader);
	return ret;
}
DEFINE_PRIM(_ofxShader_new,0);

value _ofxShader_setup(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_bool(shader->setup(val_string(b),val_string(c),val_string(d)));
}
DEFINE_PRIM(_ofxShader_setup,4);

value _ofxShader_setGeometryInputType(value a,value b) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setGeometryInputType(val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setGeometryInputType,2);

value _ofxShader_setGeometryOutputType(value a,value b) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setGeometryOutputType(val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setGeometryOutputType,2);

value _ofxShader_setGeometryOutputCount(value a,value b) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setGeometryOutputCount(val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setGeometryOutputCount,2);

value _ofxShader_getGeometryMaxOutputCount(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_int(shader->getGeometryMaxOutputCount());
}
DEFINE_PRIM(_ofxShader_getGeometryMaxOutputCount,1);

value _ofxShader_unload(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->unload();
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_unload,1);

value _ofxShader_begin(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->begin();
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_begin,1);

value _ofxShader_end(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->end();
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_end,1);

value _ofxShader_setUniformTexture(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniformTexture(val_string(b), *(ofTexture*) val_data(c), val_int(d));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniformTexture,4);

value _ofxShader_setUniform1i(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform1i(val_string(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform1i,3);

value _ofxShader_setUniform2i(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform2i(val_string(b), val_int(c), val_int(d));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform2i,4);

value _ofxShader_setUniform3i(value a,value b,value c,value d,value e) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform3i(val_string(b), val_int(c), val_int(d), val_int(e));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform3i,5);

value _ofxShader_setUniform4i(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform4i(	
							val_string(b),
							val_field_numeric(c, val_id("val0")),
							val_field_numeric(c, val_id("val1")),
							val_field_numeric(c, val_id("val2")),
							val_field_numeric(c, val_id("val3"))
						);
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform4i,3);

value _ofxShader_setUniform1f(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform1f(val_string(b), val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform1f,3);

value _ofxShader_setUniform2f(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform2f(val_string(b), val_float(c), val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform2f,4);

value _ofxShader_setUniform3f(value a,value b,value c,value d,value e) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform3f(val_string(b), val_float(c), val_float(d), val_float(e));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform3f,5);

value _ofxShader_setUniform4f(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setUniform4f(	
							val_string(b),
							val_field_numeric(c, val_id("val0")),
							val_field_numeric(c, val_id("val1")),
							val_field_numeric(c, val_id("val2")),
							val_field_numeric(c, val_id("val3"))
						);
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform4f,3);

value _ofxShader_setUniform1iv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	int* ary = val_array_int(inVal);
	bool newAry = false;
	if (!ary) {
		ary = new int[n];
		newAry = true;
		value *vals = val_array_value(inVal);
		if (vals)
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(vals[i]);
		}
		else
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(val_array_i(inVal,i));
		}
	}
	
	shader->setUniform1iv(val_string(b), ary, val_int(d));
	
	if (newAry) delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform1iv,4);

value _ofxShader_setUniform2iv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	int* ary = val_array_int(inVal);
	bool newAry = false;
	if (!ary) {
		ary = new int[n];
		newAry = true;
		value *vals = val_array_value(inVal);
		if (vals)
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(vals[i]);
		}
		else
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(val_array_i(inVal,i));
		}
	}
	
	shader->setUniform2iv(val_string(b), ary, val_int(d));
	
	if (newAry) delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform2iv,4);

value _ofxShader_setUniform3iv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	int* ary = val_array_int(inVal);
	bool newAry = false;
	if (!ary) {
		ary = new int[n];
		newAry = true;
		value *vals = val_array_value(inVal);
		if (vals)
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(vals[i]);
		}
		else
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(val_array_i(inVal,i));
		}
	}
	
	shader->setUniform3iv(val_string(b), ary, val_int(d));
	
	if (newAry) delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform3iv,4);

value _ofxShader_setUniform4iv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	int* ary = val_array_int(inVal);
	bool newAry = false;
	if (!ary) {
		ary = new int[n];
		newAry = true;
		value *vals = val_array_value(inVal);
		if (vals)
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(vals[i]);
		}
		else
		{
			for(int i=0;i<n;i++)
				ary[i] = val_int(val_array_i(inVal,i));
		}
	}
	
	shader->setUniform4iv(val_string(b), ary, val_int(d));
	
	if (newAry) delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform4iv,4);

value _ofxShader_setUniform1fv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	float* ary = new float[n];
	value *vals = val_array_value(inVal);
	if (vals)
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(vals[i]);
	}
	else
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(val_array_i(inVal,i));
	}
	
	shader->setUniform1fv(val_string(b), ary, val_int(d));
	
	delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform1fv,4);

value _ofxShader_setUniform2fv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	float* ary = new float[n];
	value *vals = val_array_value(inVal);
	if (vals)
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(vals[i]);
	}
	else
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(val_array_i(inVal,i));
	}
	
	shader->setUniform2fv(val_string(b), ary, val_int(d));
	
	delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform2fv,4);

value _ofxShader_setUniform3fv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	float* ary = new float[n];
	value *vals = val_array_value(inVal);
	if (vals)
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(vals[i]);
	}
	else
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(val_array_i(inVal,i));
	}
	
	shader->setUniform3fv(val_string(b), ary, val_int(d));
	
	delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform3fv,4);

value _ofxShader_setUniform4fv(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	
	value inVal = c;
	int n = val_array_size(inVal);
	float* ary = new float[n];
	value *vals = val_array_value(inVal);
	if (vals)
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(vals[i]);
	}
	else
	{
		for(int i=0;i<n;i++)
			ary[i] = val_float(val_array_i(inVal,i));
	}
	
	shader->setUniform4fv(val_string(b), ary, val_int(d));
	
	delete[] ary;
	
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setUniform4fv,4);

value _ofxShader_getAttributeLocation(value a,value b) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_int(shader->getAttributeLocation(val_string(b)));
}
DEFINE_PRIM(_ofxShader_getAttributeLocation,2);

value _ofxShader_setAttribute1s(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute1s(val_int(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute1s,3);

value _ofxShader_setAttribute2s(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute2s(val_int(b), val_int(c), val_int(d));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute2s,4);

value _ofxShader_setAttribute3s(value a,value b,value c,value d,value e) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute3s(val_int(b), val_int(c), val_int(d), val_int(e));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute3s,5);

value _ofxShader_setAttribute4s(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute4s(	
							val_int(b),
							val_field_numeric(c, val_id("val0")),
							val_field_numeric(c, val_id("val1")),
							val_field_numeric(c, val_id("val2")),
							val_field_numeric(c, val_id("val3"))
						);
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute4s,3);

value _ofxShader_setAttribute1f(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute1f(val_int(b), val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute1f,3);

value _ofxShader_setAttribute2f(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute2f(val_int(b), val_float(c), val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute2f,4);

value _ofxShader_setAttribute3f(value a,value b,value c,value d,value e) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute3f(val_int(b), val_float(c), val_float(d), val_float(e));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute3f,5);

value _ofxShader_setAttribute4f(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute4f(	
							val_int(b),
							val_field_numeric(c, val_id("val0")),
							val_field_numeric(c, val_id("val1")),
							val_field_numeric(c, val_id("val2")),
							val_field_numeric(c, val_id("val3"))
						);
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute4f,3);

value _ofxShader_setAttribute1d(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute1d(val_int(b), val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute1d,3);

value _ofxShader_setAttribute2d(value a,value b,value c,value d) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute2d(val_int(b), val_float(c), val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute2d,4);

value _ofxShader_setAttribute3d(value a,value b,value c,value d,value e) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute3d(val_int(b), val_float(c), val_float(d), val_float(e));
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute3d,5);

value _ofxShader_setAttribute4d(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->setAttribute4d(	
							val_int(b),
							val_field_numeric(c, val_id("val0")),
							val_field_numeric(c, val_id("val1")),
							val_field_numeric(c, val_id("val2")),
							val_field_numeric(c, val_id("val3"))
						);
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_setAttribute4d,3);

value _ofxShader_printActiveUniforms(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->printActiveUniforms();
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_printActiveUniforms,1);

value _ofxShader_printActiveAttributes(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	shader->printActiveAttributes();
	return alloc_null();
}
DEFINE_PRIM(_ofxShader_printActiveAttributes,1);

value _ofxShader_setupShaderFromSource(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_bool(shader->setupShaderFromSource(val_int(b), val_string(c)));
}
DEFINE_PRIM(_ofxShader_setupShaderFromSource,3);

value _ofxShader_setupShaderFromFile(value a,value b,value c) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_bool(shader->setupShaderFromFile(val_int(b), val_string(c)));
}
DEFINE_PRIM(_ofxShader_setupShaderFromFile,3);

value _ofxShader_linkProgram(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_bool(shader->linkProgram());
}
DEFINE_PRIM(_ofxShader_linkProgram,1);

value _ofxShader_getProgram(value a) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_int(shader->getProgram());
}
DEFINE_PRIM(_ofxShader_getProgram,1);

value _ofxShader_getShader(value a,value b) {
	ofxShader* shader = (ofxShader*) val_data(a);
	return alloc_int(shader->getShader(val_int(b)));
}
DEFINE_PRIM(_ofxShader_getShader,2);