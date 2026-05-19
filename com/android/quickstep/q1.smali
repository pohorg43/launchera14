.class public final synthetic Lcom/android/quickstep/q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/q1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/q1;

    invoke-direct {v0}, Lcom/android/quickstep/q1;-><init>()V

    sput-object v0, Lcom/android/quickstep/q1;->a:Lcom/android/quickstep/q1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    return-object p0
.end method
