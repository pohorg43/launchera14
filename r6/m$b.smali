.class public final Lr6/m$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr6/m;-><init>(Lx6/m;Li5/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Li5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr6/m;


# direct methods
.method public constructor <init>(Lr6/m;)V
    .registers 2

    iput-object p1, p0, Lr6/m$b;->a:Lr6/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lr6/m$b;->a:Lr6/m;

    iget-object p0, p0, Lr6/m;->b:Li5/e;

    invoke-static {p0}, Lk6/h;->e(Li5/e;)Li5/o0;

    move-result-object p0

    invoke-static {p0}, Li4/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
