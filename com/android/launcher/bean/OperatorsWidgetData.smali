.class public Lcom/android/launcher/bean/OperatorsWidgetData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OPERATOR_APP_WIDGET_CONFIG_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OperatorsWidgetData"


# instance fields
.field private mOperatorPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorWidgetLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorWidgetNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorPackageNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetLocation:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher/bean/OperatorsWidgetData;->hasOperatorWidgetConfig()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-direct {p0}, Lcom/android/launcher/bean/OperatorsWidgetData;->paresOperatorWidgets()V

    :cond_23
    return-void
.end method

.method private paresOperatorWidgets()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    goto :goto_38

    :cond_1f
    iget-object v2, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorPackageNames:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetNames:Ljava/util/List;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetLocation:Ljava/util/List;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_38
    :goto_38
    const-string v1, "Widget"

    const-string v2, "OperatorsWidgetData"

    const-string/jumbo v3, "paresOperatorWidgets config error return"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_43
    return-void
.end method


# virtual methods
.method public carrierPackageIndex(Ljava/lang/String;)I
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OperatorsWidgetData"

    const-string v2, "Widget"

    const/4 v3, -0x1

    if-eqz v0, :cond_11

    const-string p0, "carrierPackageIndex packageName null return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_11
    iget-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorPackageNames:Ljava/util/List;

    if-eqz v0, :cond_65

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_65

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetNames:Ljava/util/List;

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_5f

    :cond_27
    iget-object v0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetLocation:Ljava/util/List;

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_32

    goto :goto_59

    :cond_32
    iget-object p0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorPackageNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v3

    :cond_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string p0, "carrierPackageIndex return:"

    invoke-static {p0, v0, v2, v1}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_53
    const-string p0, "carrierPackageIndex return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_59
    :goto_59
    const-string p0, "carrierPackageIndex ComponentLocation null return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_5f
    :goto_5f
    const-string p0, "carrierPackageIndex WidgetNames null return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_65
    :goto_65
    const-string p0, "carrierPackageIndex PackageNames null return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public getOperatorPackageNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorPackageNames:Ljava/util/List;

    return-object p0
.end method

.method public getOperatorWidgetLocation()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetLocation:Ljava/util/List;

    return-object p0
.end method

.method public getOperatorWidgetNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgetNames:Ljava/util/List;

    return-object p0
.end method

.method public getOperatorWidgets()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgets:Ljava/util/List;

    return-object p0
.end method

.method public hasOperatorWidgetConfig()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/bean/OperatorsWidgetData;->mOperatorWidgets:Ljava/util/List;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method
