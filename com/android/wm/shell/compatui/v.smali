.class public final synthetic Lcom/android/wm/shell/compatui/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/compatui/v;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/compatui/v;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/v;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/v;->a:Lcom/android/wm/shell/compatui/v;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->d(Landroid/widget/FrameLayout$LayoutParams;Ljava/lang/Integer;)V

    return-void
.end method
