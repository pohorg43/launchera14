.class public interface abstract Lio/branch/search/IBranchDeepViewHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lio/branch/search/IBranchDeepViewHandler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/IBranchDeepViewHandler$a;

    invoke-direct {v0}, Lio/branch/search/IBranchDeepViewHandler$a;-><init>()V

    sput-object v0, Lio/branch/search/IBranchDeepViewHandler;->a:Lio/branch/search/IBranchDeepViewHandler;

    return-void
.end method


# virtual methods
.method public abstract launchDeepView(Landroid/content/Context;Lio/branch/search/BranchDeepViewFragment;)Z
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/BranchDeepViewFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
