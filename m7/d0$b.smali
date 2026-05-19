.class public final Lm7/d0$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/d0;->a(Ll4/f;Ll4/f;Z)Ll4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ll4/f;",
        "Ll4/f$a;",
        "Ll4/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ll4/f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ll4/f;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lm7/d0$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lm7/d0$b;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Ll4/f;

    check-cast p2, Ll4/f$a;

    instance-of v0, p2, Lm7/c0;

    if-nez v0, :cond_d

    invoke-interface {p1, p2}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    goto :goto_4a

    :cond_d
    iget-object v0, p0, Lm7/d0$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ll4/f;

    invoke-interface {p2}, Ll4/f$a;->getKey()Ll4/f$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    if-nez v0, :cond_30

    iget-boolean p0, p0, Lm7/d0$b;->b:Z

    if-eqz p0, :cond_28

    check-cast p2, Lm7/c0;

    invoke-interface {p2}, Lm7/c0;->k()Lm7/c0;

    move-result-object p0

    goto :goto_2b

    :cond_28
    move-object p0, p2

    check-cast p0, Lm7/c0;

    :goto_2b
    invoke-interface {p1, p0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    goto :goto_4a

    :cond_30
    iget-object p0, p0, Lm7/d0$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ll4/f;

    invoke-interface {p2}, Ll4/f$a;->getKey()Ll4/f$b;

    move-result-object v2

    invoke-interface {v1, v2}, Ll4/f;->minusKey(Ll4/f$b;)Ll4/f;

    move-result-object v1

    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lm7/c0;

    invoke-interface {p2, v0}, Lm7/c0;->y(Ll4/f$a;)Ll4/f;

    move-result-object p0

    invoke-interface {p1, p0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    :goto_4a
    return-object p0
.end method
