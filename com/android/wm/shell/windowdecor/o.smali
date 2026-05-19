.class public final synthetic Lcom/android/wm/shell/windowdecor/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/windowdecor/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/windowdecor/o;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/o;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/o;->a:Lcom/android/wm/shell/windowdecor/o;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragStart(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;->a(I)V

    return-void
.end method
