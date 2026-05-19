.class public final Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/decision/DecisionAdapter;->registerSceneObserverToStaticSdk(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $entranceType:I

.field public final synthetic this$0:Lpantanal/decision/DecisionAdapter;


# direct methods
.method public constructor <init>(Lpantanal/decision/DecisionAdapter;I)V
    .registers 3

    iput-object p1, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->this$0:Lpantanal/decision/DecisionAdapter;

    iput p2, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->$entranceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/SceneInfo;",
            ">;",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ")V"
        }
    .end annotation

    const-string v0, "originList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "registerSceneListObserver,receive new scene data from static sdk,scene count = "

    invoke-static {v2, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionAdapter"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->this$0:Lpantanal/decision/DecisionAdapter;

    invoke-static {v0, p1}, Lpantanal/decision/DecisionAdapter;->access$printOriginSceneList(Lpantanal/decision/DecisionAdapter;Ljava/util/List;)V

    iget-object v0, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->this$0:Lpantanal/decision/DecisionAdapter;

    iget v1, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->$entranceType:I

    invoke-static {v0, v1, p1, p2}, Lpantanal/decision/DecisionAdapter;->access$convertToPantaSceneList(Lpantanal/decision/DecisionAdapter;ILjava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->this$0:Lpantanal/decision/DecisionAdapter;

    iget p0, p0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;->$entranceType:I

    invoke-static {p2, p0, p1}, Lpantanal/decision/DecisionAdapter;->access$notifyToObservers(Lpantanal/decision/DecisionAdapter;ILjava/util/List;)V

    return-void
.end method
