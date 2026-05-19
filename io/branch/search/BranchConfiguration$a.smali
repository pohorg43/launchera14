.class public Lio/branch/search/BranchConfiguration$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchAppDataOverrideHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchOverride(Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/AppDataOverride;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method
