.class public Lio/branch/search/BranchBaseAppResult$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/y0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchBaseAppResult;->a(Lio/branch/search/BranchDrawableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/BranchDrawableCallback;

.field public final synthetic b:Lio/branch/search/BranchBaseAppResult;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchDrawableCallback;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/BranchBaseAppResult$a;->b:Lio/branch/search/BranchBaseAppResult;

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult$a;->a:Lio/branch/search/BranchDrawableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult$a;->a:Lio/branch/search/BranchDrawableCallback;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult$a;->b:Lio/branch/search/BranchBaseAppResult;

    invoke-interface {v0, p0, p1}, Lio/branch/search/BranchDrawableCallback;->a(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
