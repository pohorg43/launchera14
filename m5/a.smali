.class public final Lm5/a;
.super Li5/i1;
.source ""


# static fields
.field public static final c:Lm5/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm5/a;

    invoke-direct {v0}, Lm5/a;-><init>()V

    sput-object v0, Lm5/a;->c:Lm5/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li5/i1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Li5/i1;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_d

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p0, Li5/h1;->a:Li5/h1;

    invoke-virtual {p0, p1}, Li5/h1;->a(Li5/i1;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    const-string p0, "public/*package*/"

    return-object p0
.end method

.method public c()Li5/i1;
    .registers 1

    sget-object p0, Li5/h1$g;->c:Li5/h1$g;

    return-object p0
.end method
