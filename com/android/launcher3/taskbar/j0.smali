.class public final synthetic Lcom/android/launcher3/taskbar/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/j0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/j0;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/j0;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/j0;->a:Lcom/android/launcher3/taskbar/j0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->a()V

    return-void
.end method
