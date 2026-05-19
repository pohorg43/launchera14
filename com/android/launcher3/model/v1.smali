.class public final synthetic Lcom/android/launcher3/model/v1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/v1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/v1;

    invoke-direct {v0}, Lcom/android/launcher3/model/v1;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/v1;->a:Lcom/android/launcher3/model/v1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForWidgetPrediction(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method
