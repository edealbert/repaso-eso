// Sincronización opcional (gratis) con Supabase para que el progreso de Daniela y Alba
// se vea desde cualquier dispositivo y desde el panel de Papá.
// Si se deja vacío, todo funciona, pero cada dispositivo guarda solo lo suyo.
// Puedes usar el MISMO proyecto de Supabase que la web de la oposición: esta web usa otra tabla.
window.RE_CONFIG = {
  supabaseUrl: "",   // Project URL, p. ej. "https://xxxx.supabase.co"
  supabaseKey: ""    // clave "anon public" (o "publishable")
};
