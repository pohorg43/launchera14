.class public final synthetic Landroidx/slice/widget/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# instance fields
.field public final synthetic a:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/b;->a:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    return-void
.end method


# virtual methods
.method public final onSliceUpdated(Landroidx/slice/Slice;)V
    .registers 2

    iget-object p0, p0, Landroidx/slice/widget/b;->a:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->a(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Landroidx/slice/Slice;)V

    return-void
.end method
