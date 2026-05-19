.class public Lcom/oplus/log/util/EraseBrandUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BRAND_H2OS:Ljava/lang/String;

.field public static final BRAND_O1:Ljava/lang/String;

.field public static final BRAND_O2:Ljava/lang/String;

.field public static final BRAND_O2OS:Ljava/lang/String;

.field public static final BRAND_O3:Ljava/lang/String;

.field public static final BRAND_OP1:Ljava/lang/String;

.field public static final BRAND_OS1:Ljava/lang/String;

.field public static final BRAND_OS2:Ljava/lang/String;

.field public static final BRAND_OS3:Ljava/lang/String;

.field public static final BRAND_OS4:Ljava/lang/String;

.field public static final BRAND_OS5:Ljava/lang/String;

.field public static final BRAND_OS6:Ljava/lang/String;

.field public static final BRAND_P1:Ljava/lang/String;

.field public static final BRAND_P2:Ljava/lang/String;

.field public static final BRAND_R1:Ljava/lang/String;

.field public static final BRAND_R2:Ljava/lang/String;

.field private static final ENCODED_BRAND_O1:Ljava/lang/String; = "T1BQTw=="

.field private static final ENCODED_BRAND_O2:Ljava/lang/String; = "b3Bwbw=="

.field private static final ENCODED_BRAND_O3:Ljava/lang/String; = "T3Bwbw=="

.field private static final ENCODED_BRAND_OP1:Ljava/lang/String; = "T3BsdXNPUw=="

.field private static final ENCODED_BRAND_OS1:Ljava/lang/String; = "Q29sb3JPUw=="

.field private static final ENCODED_BRAND_OS2:Ljava/lang/String; = "Q09MT1JPUw=="

.field private static final ENCODED_BRAND_OS3:Ljava/lang/String; = "Y29sb3Jvcw=="

.field private static final ENCODED_BRAND_OS4:Ljava/lang/String; = "Y29sb3JPUw=="

.field private static final ENCODED_BRAND_P1:Ljava/lang/String; = "T25lUGx1cw=="

.field private static final ENCODED_BRAND_P2:Ljava/lang/String; = "b25lcGx1cw=="

.field private static final ENCODED_BRAND_R1:Ljava/lang/String; = "UmVhbG1l"

.field private static final ENCODED_BRAND_R2:Ljava/lang/String; = "cmVhbG1l"

.field private static final ENCODED_H2OS:Ljava/lang/String; = "SHlkcm9nZW4gT1Mg"

.field private static final ENCODED_O2OS:Ljava/lang/String; = "T3h5Z2VuIE9TIA=="

.field private static final ENCODE_BRAND_OS5:Ljava/lang/String; = "Y29sb3I="

.field private static final ENCODE_BRAND_OS6:Ljava/lang/String; = "Q29sb3JCdWlsZA=="

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->map:Ljava/util/Map;

    const-string v0, "T1BQTw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O1:Ljava/lang/String;

    const-string v0, "b3Bwbw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O2:Ljava/lang/String;

    const-string v0, "T3Bwbw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O3:Ljava/lang/String;

    const-string v0, "UmVhbG1l"

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_R1:Ljava/lang/String;

    const-string v0, "cmVhbG1l"

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_R2:Ljava/lang/String;

    const-string v0, "T25lUGx1cw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_P1:Ljava/lang/String;

    const-string v0, "b25lcGx1cw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_P2:Ljava/lang/String;

    const-string v0, "Q29sb3JPUw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OS1:Ljava/lang/String;

    const-string v0, "Q09MT1JPUw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OS2:Ljava/lang/String;

    const-string v0, "Y29sb3Jvcw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OS3:Ljava/lang/String;

    const-string v0, "Y29sb3JPUw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OS4:Ljava/lang/String;

    const-string v0, "Y29sb3I="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OS5:Ljava/lang/String;

    const-string v0, "Q29sb3JCdWlsZA=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OS6:Ljava/lang/String;

    const-string v0, "T3BsdXNPUw=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_OP1:Ljava/lang/String;

    const-string v0, "SHlkcm9nZW4gT1Mg"

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_H2OS:Ljava/lang/String;

    const-string v0, "T3h5Z2VuIE9TIA=="

    invoke-static {v0}, Lcom/oplus/log/util/EraseBrandUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/util/EraseBrandUtil;->BRAND_O2OS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/oplus/log/util/EraseBrandUtil;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/oplus/log/util/EraseBrandUtil;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
