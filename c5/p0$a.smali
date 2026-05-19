.class public Lc5/p0$a;
.super Lc5/p0$c;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/p0$c<",
        "TT;>;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_14

    invoke-direct {p0}, Lc5/p0$c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/p0$a;->c:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, Lc5/p0$a;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_13

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lc5/p0$a;->c:Ljava/lang/ref/SoftReference;

    :cond_13
    return-void

    :cond_14
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "initializer"

    aput-object p2, p0, p1

    const/4 p1, 0x1

    const-string p2, "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "<init>"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc5/p0$a;->c:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object p0, Lc5/p0$c;->a:Ljava/lang/Object;

    if-ne v0, p0, :cond_f

    const/4 v0, 0x0

    :cond_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lc5/p0$a;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1d

    sget-object v2, Lc5/p0$c;->a:Ljava/lang/Object;

    goto :goto_1e

    :cond_1d
    move-object v2, v0

    :goto_1e
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc5/p0$a;->c:Ljava/lang/ref/SoftReference;

    return-object v0
.end method
