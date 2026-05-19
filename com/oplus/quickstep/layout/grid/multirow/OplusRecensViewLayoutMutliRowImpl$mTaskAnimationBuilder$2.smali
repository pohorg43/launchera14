.class final Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mTaskAnimationBuilder$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mTaskAnimationBuilder$2;->this$0:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

    iget-object p0, p0, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mTaskAnimationBuilder$2;->this$0:Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;-><init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/layout/grid/multirow/OplusRecensViewLayoutMutliRowImpl$mTaskAnimationBuilder$2;->invoke()Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

    move-result-object p0

    return-object p0
.end method
