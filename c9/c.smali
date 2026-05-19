.class public Lc9/c;
.super Lb9/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb9/c;-><init>()V

    new-instance v0, Lc9/c$a;

    invoke-direct {v0, p0}, Lc9/c$a;-><init>(Lc9/c;)V

    iput-object v0, p0, Lb9/c;->s_e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public s_a()Landroid/content/Intent;
    .registers 4

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "Y29tLmhleXRhcC5vcGVuaWQ="

    invoke-static {v1}, Lc9/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y29tLmhleXRhcC5vcGVuaWQuSWRlbnRpZnlTZXJ2aWNl"

    invoke-static {v2}, Lc9/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "YWN0aW9uLmNvbS5oZXl0YXAub3BlbmlkLk9QRU5fSURfU0VSVklDRQ=="

    invoke-static {v0}, Lc9/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "2012"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public s_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lb9/b;->s_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s_a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb9/b;->s_a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public s_b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb9/b;->s_b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public s_c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lb9/c;->s_a:Landroid/os/IInterface;

    check-cast v0, Ls_a/s_a/s_a/s_a;

    iget-object v1, p0, Lb9/c;->s_b:Ljava/lang/String;

    iget-object p0, p0, Lb9/c;->s_c:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Ls_a/s_a/s_a/s_a;->s_a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_1d

    :catch_d
    const-string p0, "OUID_STATUS"

    if-ne p1, p0, :cond_14

    const-string p0, "FALSE"

    goto :goto_16

    :cond_14
    const-string p0, ""

    :goto_16
    const-string p1, "IDHelper"

    const-string v0, "1027"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-object p0
.end method
