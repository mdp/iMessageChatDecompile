package org.jsoup.parser;

 enum TokeniserState
{
  private static final String ap = String.valueOf(65533);

  static
  {
    A = new TokeniserState.27("ScriptDataEscapedEndTagName");
    B = new TokeniserState.28("ScriptDataDoubleEscapeStart");
    C = new TokeniserState.29("ScriptDataDoubleEscaped");
    D = new TokeniserState.30("ScriptDataDoubleEscapedDash");
    E = new TokeniserState.31("ScriptDataDoubleEscapedDashDash");
    F = new TokeniserState.32("ScriptDataDoubleEscapedLessthanSign");
    G = new TokeniserState.33("ScriptDataDoubleEscapeEnd");
    H = new TokeniserState.34("BeforeAttributeName");
    I = new TokeniserState.35("AttributeName");
    J = new TokeniserState.36("AfterAttributeName");
    K = new TokeniserState.37("BeforeAttributeValue");
    L = new TokeniserState.38("AttributeValue_doubleQuoted");
    M = new TokeniserState.39("AttributeValue_singleQuoted");
    N = new TokeniserState.40("AttributeValue_unquoted");
    O = new TokeniserState.41("AfterAttributeValue_quoted");
    P = new TokeniserState.42("SelfClosingStartTag");
    Q = new TokeniserState.43("BogusComment");
    R = new TokeniserState.44("MarkupDeclarationOpen");
    S = new TokeniserState.45("CommentStart");
    T = new TokeniserState.46("CommentStartDash");
    U = new TokeniserState.47("Comment");
    V = new TokeniserState.48("CommentEndDash");
    W = new TokeniserState.49("CommentEnd");
    X = new TokeniserState.50("CommentEndBang");
    Y = new TokeniserState.51("Doctype");
    Z = new TokeniserState.52("BeforeDoctypeName");
    aa = new TokeniserState.53("DoctypeName");
    ab = new TokeniserState.54("AfterDoctypeName");
    ac = new TokeniserState.55("AfterDoctypePublicKeyword");
    ad = new TokeniserState.56("BeforeDoctypePublicIdentifier");
    ae = new TokeniserState.57("DoctypePublicIdentifier_doubleQuoted");
    af = new TokeniserState.58("DoctypePublicIdentifier_singleQuoted");
    ag = new TokeniserState.59("AfterDoctypePublicIdentifier");
    ah = new TokeniserState.60("BetweenDoctypePublicAndSystemIdentifiers");
    ai = new TokeniserState.61("AfterDoctypeSystemKeyword");
    aj = new TokeniserState.62("BeforeDoctypeSystemIdentifier");
    ak = new TokeniserState.63("DoctypeSystemIdentifier_doubleQuoted");
    al = new TokeniserState.64("DoctypeSystemIdentifier_singleQuoted");
    am = new TokeniserState.65("AfterDoctypeSystemIdentifier");
    an = new TokeniserState.66("BogusDoctype");
    ao = new TokeniserState.67("CdataSection");
    TokeniserState[] arrayOfTokeniserState = new TokeniserState[67];
    arrayOfTokeniserState[0] = a;
    arrayOfTokeniserState[1] = b;
    arrayOfTokeniserState[2] = c;
    arrayOfTokeniserState[3] = d;
    arrayOfTokeniserState[4] = e;
    arrayOfTokeniserState[5] = f;
    arrayOfTokeniserState[6] = g;
    arrayOfTokeniserState[7] = h;
    arrayOfTokeniserState[8] = i;
    arrayOfTokeniserState[9] = j;
    arrayOfTokeniserState[10] = k;
    arrayOfTokeniserState[11] = l;
    arrayOfTokeniserState[12] = m;
    arrayOfTokeniserState[13] = n;
    arrayOfTokeniserState[14] = o;
    arrayOfTokeniserState[15] = p;
    arrayOfTokeniserState[16] = q;
    arrayOfTokeniserState[17] = r;
    arrayOfTokeniserState[18] = s;
    arrayOfTokeniserState[19] = t;
    arrayOfTokeniserState[20] = u;
    arrayOfTokeniserState[21] = v;
    arrayOfTokeniserState[22] = w;
    arrayOfTokeniserState[23] = x;
    arrayOfTokeniserState[24] = y;
    arrayOfTokeniserState[25] = z;
    arrayOfTokeniserState[26] = A;
    arrayOfTokeniserState[27] = B;
    arrayOfTokeniserState[28] = C;
    arrayOfTokeniserState[29] = D;
    arrayOfTokeniserState[30] = E;
    arrayOfTokeniserState[31] = F;
    arrayOfTokeniserState[32] = G;
    arrayOfTokeniserState[33] = H;
    arrayOfTokeniserState[34] = I;
    arrayOfTokeniserState[35] = J;
    arrayOfTokeniserState[36] = K;
    arrayOfTokeniserState[37] = L;
    arrayOfTokeniserState[38] = M;
    arrayOfTokeniserState[39] = N;
    arrayOfTokeniserState[40] = O;
    arrayOfTokeniserState[41] = P;
    arrayOfTokeniserState[42] = Q;
    arrayOfTokeniserState[43] = R;
    arrayOfTokeniserState[44] = S;
    arrayOfTokeniserState[45] = T;
    arrayOfTokeniserState[46] = U;
    arrayOfTokeniserState[47] = V;
    arrayOfTokeniserState[48] = W;
    arrayOfTokeniserState[49] = X;
    arrayOfTokeniserState[50] = Y;
    arrayOfTokeniserState[51] = Z;
    arrayOfTokeniserState[52] = aa;
    arrayOfTokeniserState[53] = ab;
    arrayOfTokeniserState[54] = ac;
    arrayOfTokeniserState[55] = ad;
    arrayOfTokeniserState[56] = ae;
    arrayOfTokeniserState[57] = af;
    arrayOfTokeniserState[58] = ag;
    arrayOfTokeniserState[59] = ah;
    arrayOfTokeniserState[60] = ai;
    arrayOfTokeniserState[61] = aj;
    arrayOfTokeniserState[62] = ak;
    arrayOfTokeniserState[63] = al;
    arrayOfTokeniserState[64] = am;
    arrayOfTokeniserState[65] = an;
    arrayOfTokeniserState[66] = ao;
    aq = arrayOfTokeniserState;
  }

  abstract void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState
 * JD-Core Version:    0.6.2
 */