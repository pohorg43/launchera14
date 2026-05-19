.class public final Lm5/c;
.super Li5/i1;
.source ""


# static fields
.field public static final c:Lm5/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm5/c;

    invoke-direct {v0}, Lm5/c;-><init>()V

    sput-object v0, Lm5/c;->c:Lm5/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "protected_static"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Li5/i1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 1

    const-string p0, "protected/*protected static*/"

    return-object p0
.end method

.method public c()Li5/i1;
    .registers 1

    sget-object p0, Li5/h1$g;->c:Li5/h1$g;

    return-object p0
.end method
