.class public final Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/groupcard/utils/GroupCardTools;->registerSceneSupportObserver(ILandroid/content/Context;Lpantanal/app/groupcard/scene/PantaSceneSupportObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $entranceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;->$context:Landroid/content/Context;

    iput p2, p0, Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;->$entranceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "register SceneSupportObserver,receive change,isSupportScene changed to "

    invoke-static {v1, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "GroupCardTools"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;->$context:Landroid/content/Context;

    if-eqz v0, :cond_3c

    iget p0, p0, Lpantanal/app/groupcard/utils/GroupCardTools$registerSceneSupportObserver$innerObserver$1;->$entranceType:I

    sget-object v1, Lpantanal/app/groupcard/utils/GroupCardTools;->INSTANCE:Lpantanal/app/groupcard/utils/GroupCardTools;

    invoke-static {v1, v0}, Lpantanal/app/groupcard/utils/GroupCardTools;->access$isLauncherSupportScene(Lpantanal/app/groupcard/utils/GroupCardTools;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0}, Lpantanal/app/groupcard/utils/GroupCardTools;->access$isGCPCanRunSceneInCurOs(Lpantanal/app/groupcard/utils/GroupCardTools;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_38

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-static {v1, p0, p1}, Lpantanal/app/groupcard/utils/GroupCardTools;->access$doNotifyToOuterObservers(Lpantanal/app/groupcard/utils/GroupCardTools;IZ)V

    :cond_3c
    return-void
.end method
