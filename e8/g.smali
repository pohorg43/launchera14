.class public final Le8/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le8/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Le8/g;

.field public static final e:Le8/g;

.field public static final f:Le8/g;

.field public static final g:Le8/g;

.field public static final h:Le8/g;

.field public static final i:Le8/g;

.field public static final j:Le8/g;

.field public static final k:Le8/g;

.field public static final l:Le8/g;

.field public static final m:Le8/g;

.field public static final n:Le8/g;

.field public static final o:Le8/g;

.field public static final p:Le8/g;

.field public static final q:Le8/g;

.field public static final r:Le8/g;

.field public static final s:Le8/g;

.field public static final t:Le8/g;

.field public static final u:Le8/g;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Le8/g$a;

    invoke-direct {v0}, Le8/g$a;-><init>()V

    sput-object v0, Le8/g;->b:Ljava/util/Comparator;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Le8/g;->c:Ljava/util/Map;

    new-instance v1, Le8/g;

    const-string v2, "SSL_RSA_WITH_NULL_MD5"

    invoke-direct {v1, v2}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->d:Le8/g;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->e:Le8/g;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->f:Le8/g;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->g:Le8/g;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->h:Le8/g;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_FALLBACK_SCSV"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->i:Le8/g;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->j:Le8/g;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->k:Le8/g;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->l:Le8/g;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->m:Le8/g;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->n:Le8/g;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->o:Le8/g;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->p:Le8/g;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->q:Le8/g;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->r:Le8/g;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->s:Le8/g;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->t:Le8/g;

    const-string v1, "TLS_AES_256_CCM_8_SHA256"

    new-instance v2, Le8/g;

    invoke-direct {v2, v1}, Le8/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Le8/g;->u:Le8/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Le8/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Le8/g;
    .registers 5

    const-class v0, Le8/g;

    monitor-enter v0

    :try_start_3
    sget-object v1, Le8/g;->c:Ljava/util/Map;

    move-object v2, v1

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/g;

    if-nez v2, :cond_27

    invoke-static {p0}, Le8/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le8/g;

    if-nez v2, :cond_24

    new-instance v2, Le8/g;

    invoke-direct {v2, p0}, Le8/g;-><init>(Ljava/lang/String;)V

    :cond_24
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit v0

    return-object v2

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "TLS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "SSL_"

    if-eqz v1, :cond_1b

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Le8/g;->a:Ljava/lang/String;

    return-object p0
.end method
