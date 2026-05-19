.class public Lp/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lq/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "nm"

    const-string/jumbo v1, "p"

    const-string/jumbo v2, "s"

    const-string v3, "hd"

    const-string v4, "d"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/c$a;->a([Ljava/lang/String;)Lq/c$a;

    move-result-object v0

    sput-object v0, Lp/e;->a:Lq/c$a;

    return-void
.end method
