.class public final Lo7/c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lo7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lu7/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo7/b;Lu7/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo7/b<",
            "Ljava/lang/Object;",
            ">;",
            "Lu7/h<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo7/c;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo7/c;->b:Lo7/b;

    iput-object p3, p0, Lo7/c;->c:Lu7/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lo7/c;->a:Ljava/lang/Object;

    sget-object v0, Lo7/e;->l:Lr7/f0;

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lo7/c;->b:Lo7/b;

    iget-object v0, v0, Lo7/b;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lo7/c;->c:Lu7/h;

    invoke-interface {p0}, Lu7/h;->getContext()Ll4/f;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lr7/x;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V

    :cond_15
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
