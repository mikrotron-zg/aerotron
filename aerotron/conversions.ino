double ratio2ppm(int ID,double ratio){
  return pow(10,(log10(ratio)-sens_eq[ID][1])/sens_eq[ID][0]-c_trans[ID]);
}

double ratio2mgm3(int ID,double ratio){
  return ppm2mgm3(ID,ratio2ppm(ID,ratio));
}

double ppm2mgm3(int ID,double ppm){
  return ppm*mm[ID]/V_mol;
}
