.class public final Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;
.super Lcom/oplus/quickstep/utils/SingletonHolderWithParam;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/RoundCornerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "INSTANCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/utils/SingletonHolderWithParam<",
        "Lcom/oplus/quickstep/utils/RoundCornerLoader;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE$1;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE$1;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;
    .registers 5

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$getRoundedCorner$cp()I

    move-result v1

    if-lez v1, :cond_25

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportResolutionSwitch:Z

    if-eqz v1, :cond_75

    invoke-static {}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$getSScreenWidth$cp()I

    move-result v1

    if-eq v1, v0, :cond_75

    :cond_25
    invoke-static {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$setSScreenWidth$cp(I)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    const/4 v1, 0x0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_52

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    invoke-static {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$setRoundedCorner$cp(I)V

    invoke-static {}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$getRoundedCorner$cp()I

    move-result v0

    if-gtz v0, :cond_5f

    invoke-static {v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$setRoundedCorner$cp(I)V

    :cond_5f
    const-string v0, "roundedCorner="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->access$getRoundedCorner$cp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RoundCornerLoader"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    invoke-super {p0, p1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object p0

    return-object p0
.end method
