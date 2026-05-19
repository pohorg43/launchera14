.class public final Lcom/android/common/util/DisplayKey$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/DisplayKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/DisplayKey$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroid/content/Context;)Lcom/android/common/util/DisplayKey;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/util/DisplayKey$Companion;->from(Landroid/content/res/Configuration;)Lcom/android/common/util/DisplayKey;

    move-result-object p0

    return-object p0
.end method

.method public final from(Landroid/content/res/Configuration;)Lcom/android/common/util/DisplayKey;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/common/util/DisplayKey;

    invoke-direct {p0}, Lcom/android/common/util/DisplayKey;-><init>()V

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/DisplayKey;->setFoldingMode(I)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v0}, Lcom/android/common/util/DisplayKey;->setDensityDpi(I)V

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/common/util/DisplayKey;->setFontScale(F)V

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/DisplayKey;->setRotation(I)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/common/util/DisplayKey;->setBounds(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/common/util/DisplayKey;->setNavigationMode(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    return-object p0
.end method
