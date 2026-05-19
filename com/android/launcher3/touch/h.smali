.class public final synthetic Lcom/android/launcher3/touch/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/touch/h;

    invoke-direct {v0}, Lcom/android/launcher3/touch/h;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/h;->a:Lcom/android/launcher3/touch/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method
