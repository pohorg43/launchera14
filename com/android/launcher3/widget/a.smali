.class public final synthetic Lcom/android/launcher3/widget/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

.field public final synthetic b:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/a;->a:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/a;->b:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    iput p3, p0, Lcom/android/launcher3/widget/a;->c:I

    iput p4, p0, Lcom/android/launcher3/widget/a;->d:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/a;->a:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/a;->b:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    iget v2, p0, Lcom/android/launcher3/widget/a;->c:I

    iget p0, p0, Lcom/android/launcher3/widget/a;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->c(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V

    return-void
.end method
