.class public final Lq7/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll4/f;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/e;Ll4/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq7/z;->a:Ll4/f;

    invoke-static {p2}, Lr7/h0;->b(Ll4/f;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lq7/z;->b:Ljava/lang/Object;

    new-instance p2, Lq7/z$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lq7/z$a;-><init>(Lp7/e;Ll4/d;)V

    iput-object p2, p0, Lq7/z;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lq7/z;->a:Ll4/f;

    iget-object v1, p0, Lq7/z;->b:Ljava/lang/Object;

    iget-object p0, p0, Lq7/z;->c:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, v1, p0, p2}, Lq7/g;->a(Ll4/f;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
