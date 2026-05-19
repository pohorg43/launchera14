.class public final synthetic Lcom/android/wm/shell/common/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field public final synthetic b:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/graphics/drawable/Icon;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/n;->a:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    iput-object p2, p0, Lcom/android/wm/shell/common/n;->b:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/n;->a:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    iget-object p0, p0, Lcom/android/wm/shell/common/n;->b:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->a(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
