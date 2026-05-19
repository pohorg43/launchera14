.class public Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;


# static fields
.field private static final TASK_FOCUSED_STATE:[I


# instance fields
.field private mIsTaskFocused:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/android/wm/shell/R$attr;->state_task_focused:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->TASK_FOCUSED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->mIsTaskFocused:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->TASK_FOCUSED_STATE:[I

    invoke-static {p0, p1}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    return-object p0
.end method

.method public setTaskFocusState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->mIsTaskFocused:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    return-void
.end method
