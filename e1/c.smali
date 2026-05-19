.class public Le1/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le1/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2, p3}, Ly0/b;->e(II)Z

    move-result p2

    if-eqz p2, :cond_22

    new-instance p2, Ld1/n$a;

    new-instance p3, Ls1/b;

    invoke-direct {p3, p1}, Ls1/b;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Le1/c;->a:Landroid/content/Context;

    new-instance p4, Ly0/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p4, v0}, Ly0/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, p4}, Ly0/c;->d(Landroid/content/Context;Landroid/net/Uri;Ly0/d;)Ly0/c;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Ly0/b;->d(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string/jumbo p1, "video"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method
