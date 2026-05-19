.class public final Lq7/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f;


# instance fields
.field public final a:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final synthetic b:Ll4/f;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ll4/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/m;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lq7/m;->b:Ll4/f;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Ll4/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lq7/m;->b:Ll4/f;

    invoke-interface {p0, p1, p2}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ll4/f$b;)Ll4/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll4/f$a;",
            ">(",
            "Ll4/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object p0, p0, Lq7/m;->b:Ll4/f;

    invoke-interface {p0, p1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    return-object p0
.end method

.method public minusKey(Ll4/f$b;)Ll4/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "*>;)",
            "Ll4/f;"
        }
    .end annotation

    iget-object p0, p0, Lq7/m;->b:Ll4/f;

    invoke-interface {p0, p1}, Ll4/f;->minusKey(Ll4/f$b;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(Ll4/f;)Ll4/f;
    .registers 2

    iget-object p0, p0, Lq7/m;->b:Ll4/f;

    invoke-interface {p0, p1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0
.end method
