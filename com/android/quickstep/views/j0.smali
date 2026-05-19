.class public final synthetic Lcom/android/quickstep/views/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/views/j0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/views/j0;

    invoke-direct {v0}, Lcom/android/quickstep/views/j0;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/j0;->a:Lcom/android/quickstep/views/j0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->l(I)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method
