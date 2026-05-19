.class public final synthetic Lcom/android/quickstep/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/z;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/z;

    invoke-direct {v0}, Lcom/android/quickstep/z;-><init>()V

    sput-object v0, Lcom/android/quickstep/z;->a:Lcom/android/quickstep/z;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-static {p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->b(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method
