.class public final synthetic Lcom/android/launcher3/config/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/config/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/config/a;

    invoke-direct {v0}, Lcom/android/launcher3/config/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/config/a;->a:Lcom/android/launcher3/config/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    check-cast p2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    invoke-static {p1, p2}, Lcom/android/launcher3/config/FeatureFlags;->a(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)I

    move-result p0

    return p0
.end method
