class alumno {
    constructor(id,ape, nom,user,conec,Es,Ca) {
      this.id = id;
      this.ape = ape;
      this.nom = nom;
      this.user = user;
      this.conec= conec;
      this.Es = Es;
      this.Ca = Ca;
      
    }
  
    getUserStats() {
      return `
        id: ${this.id}
        ape: ${this.ape}
        nom: ${this.nom}
        user: ${this.user}
        conec: ${this.conec}
        Es: ${this.Es}
        Ca: ${this.Ca}
      `;
    }
  }
  
  module.exports = alumno;