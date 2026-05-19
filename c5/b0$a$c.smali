.class public final Lc5/b0$a$c;
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
        "Lh4/o<",
        "+",
        "Lg6/f;",
        "+",
        "Lc6/l;",
        "+",
        "Lg6/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/b0$a;


# direct methods
.method public constructor <init>(Lc5/b0$a;)V
    .registers 2

    iput-object p1, p0, Lc5/b0$a$c;->a:Lc5/b0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lc5/b0$a$c;->a:Lc5/b0$a;

    invoke-static {p0}, Lc5/b0$a;->a(Lc5/b0$a;)Ln5/e;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    iget-object p0, p0, Ln5/e;->b:Lb6/a;

    if-eqz p0, :cond_29

    iget-object v1, p0, Lb6/a;->c:[Ljava/lang/String;

    iget-object v2, p0, Lb6/a;->e:[Ljava/lang/String;

    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    invoke-static {v1, v2}, Lg6/h;->h([Ljava/lang/String;[Ljava/lang/String;)Lh4/j;

    move-result-object v0

    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Lg6/f;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Lc6/l;

    new-instance v2, Lh4/o;

    iget-object p0, p0, Lb6/a;->b:Lg6/e;

    invoke-direct {v2, v1, v0, p0}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_29
    return-object v0
.end method
