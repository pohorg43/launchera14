.class public final Lc5/b0$a$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/b0$a;-><init>(Lc5/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/b0$a;

.field public final synthetic b:Lc5/b0;


# direct methods
.method public constructor <init>(Lc5/b0$a;Lc5/b0;)V
    .registers 3

    iput-object p1, p0, Lc5/b0$a$d;->a:Lc5/b0$a;

    iput-object p2, p0, Lc5/b0$a$d;->b:Lc5/b0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lc5/b0$a$d;->a:Lc5/b0$a;

    invoke-static {v0}, Lc5/b0$a;->a(Lc5/b0$a;)Ln5/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Ln5/e;->b:Lb6/a;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lb6/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    if-eqz v2, :cond_36

    iget-object p0, p0, Lc5/b0$a$d;->b:Lc5/b0;

    iget-object p0, p0, Lc5/b0;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lk7/m;->p(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_36
    return-object v1
.end method
