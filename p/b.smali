.class public Lp/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lq/c$a;

.field public static b:Lq/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/b;->a:Lq/c$a;

    const-string v0, "fc"

    const-string/jumbo v1, "sc"

    const-string/jumbo v2, "sw"

    const-string/jumbo v3, "t"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/b;->b:Lq/c$a;

    return-void
.end method
