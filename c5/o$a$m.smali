.class public final Lc5/o$a$m;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/o$a;-><init>(Lc5/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final synthetic b:Lc5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/o$a;Lc5/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/o<",
            "TT;>.a;",
            "Lc5/o<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/o$a$m;->a:Lc5/o$a;

    iput-object p2, p0, Lc5/o$a$m;->b:Lc5/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc5/o$a$m;->a:Lc5/o$a;

    invoke-virtual {v0}, Lc5/o$a;->a()Li5/e;

    move-result-object v0

    invoke-interface {v0}, Li5/e;->f()Li5/f;

    move-result-object v1

    sget-object v2, Li5/f;->f:Li5/f;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return-object v3

    :cond_10
    invoke-interface {v0}, Li5/e;->X()Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Lf5/c;->a:Lf5/c;

    invoke-static {v1, v0}, Lv1/e;->a(Lf5/c;Li5/e;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object p0, p0, Lc5/o$a$m;->b:Lc5/o;

    iget-object p0, p0, Lc5/o;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_3d

    :cond_33
    iget-object p0, p0, Lc5/o$a$m;->b:Lc5/o;

    iget-object p0, p0, Lc5/o;->c:Ljava/lang/Class;

    const-string v0, "INSTANCE"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :goto_3d
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
