.class public final Lio/branch/search/ui/BranchEntity$AppEntity;
.super Lio/branch/search/ui/BranchEntity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/BranchEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/BranchEntity$AppEntity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u000e\u0010\u000e\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\r\u0012\u000e\u0010\u0010\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"
    }
    d2 = {
        "Lio/branch/search/ui/BranchEntity$AppEntity;",
        "Lio/branch/search/ui/BranchEntity;",
        "Lio/branch/search/BranchBaseAppResult;",
        "app",
        "",
        "title",
        "description",
        "",
        "isAd",
        "Lio/branch/search/ui/ImageLoadingStrategy;",
        "primaryImage",
        "secondaryImage",
        "retrievedLocally",
        "Lio/branch/search/internal/shared/BncContainerCategory;",
        "containerType",
        "Lio/branch/search/internal/shared/BncContentCategory;",
        "contentType",
        "Lio/branch/search/ui/BranchExtra;",
        "branchExtra",
        "<init>",
        "(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/ui/BranchEntity$AppEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/branch/search/BranchBaseAppResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lio/branch/search/ui/ImageLoadingStrategy;

.field public final f:Lio/branch/search/ui/ImageLoadingStrategy;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lio/branch/search/ui/BranchExtra;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/ui/BranchEntity$AppEntity$a;

    invoke-direct {v0}, Lio/branch/search/ui/BranchEntity$AppEntity$a;-><init>()V

    sput-object v0, Lio/branch/search/ui/BranchEntity$AppEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseAppResult;Ljava/lang/String;Ljava/lang/String;ZLio/branch/search/ui/ImageLoadingStrategy;Lio/branch/search/ui/ImageLoadingStrategy;ZLjava/lang/String;Ljava/lang/String;Lio/branch/search/ui/BranchExtra;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lio/branch/search/ui/ImageLoadingStrategy;",
            "Lio/branch/search/ui/ImageLoadingStrategy;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/search/ui/BranchExtra;",
            ")V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryImage"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/ui/BranchEntity;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    iput-object p2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->d:Z

    iput-object p5, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    iput-object p6, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    iput-boolean p7, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->g:Z

    iput-object p8, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->h:Ljava/lang/String;

    iput-object p9, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    iput-object p10, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->j:Lio/branch/search/ui/BranchExtra;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lio/branch/search/ui/ImageLoadingStrategy;
    .registers 1

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_67

    instance-of v0, p1, Lio/branch/search/ui/BranchEntity$AppEntity;

    if-eqz v0, :cond_65

    check-cast p1, Lio/branch/search/ui/BranchEntity$AppEntity;

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->d:Z

    iget-boolean v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->d:Z

    if-ne v0, v1, :cond_65

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->g:Z

    iget-boolean v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->g:Z

    if-ne v0, v1, :cond_65

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->h:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->j:Lio/branch/search/ui/BranchExtra;

    iget-object p1, p1, Lio/branch/search/ui/BranchEntity$AppEntity;->j:Lio/branch/search/ui/BranchExtra;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_67

    :cond_65
    const/4 p0, 0x0

    return p0

    :cond_67
    :goto_67
    const/4 p0, 0x1

    return p0
.end method

.method public f(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchError;
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    instance-of v1, v0, Lio/branch/search/BranchLocalAppResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    check-cast v0, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchSearchError;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_1b

    :cond_15
    sget-object p1, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v2

    :goto_1b
    return-object v2

    :cond_1c
    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz v0, :cond_6a

    if-eqz p2, :cond_6a

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v1}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "app.packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    iget-object v3, v3, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    const-string v4, "app.user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1, v3}, Lio/branch/search/IBranchIntentHandler;->openApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6a

    iget-object p1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    const-string p2, "launch_intent"

    invoke-virtual {v0, p1, p2}, Lio/branch/search/m;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/e4;

    iget-object p2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p2}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p2}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/branch/search/e4;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, v0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    if-eqz p0, :cond_82

    invoke-virtual {p0, p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/e4;)V

    goto :goto_82

    :cond_6a
    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppEntity.open"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object p2, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, p2}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-virtual {p0, p1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v2

    :cond_82
    :goto_82
    return-object v2
.end method

.method public g(Landroid/view/View;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v0, p1, p0}, Lio/branch/search/m;->trackImpressions(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V

    :cond_10
    return-void
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    move v2, v3

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3a

    :cond_39
    move v2, v1

    :goto_3a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->g:Z

    if-eqz v2, :cond_4f

    goto :goto_50

    :cond_4f
    move v3, v2

    :goto_50
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->h:Ljava/lang/String;

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5d

    :cond_5c
    move v2, v1

    :goto_5d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->j:Lio/branch/search/ui/BranchExtra;

    if-eqz p0, :cond_75

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_75
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AppEntity(app="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retrievedLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", containerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", branchExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->j:Lio/branch/search/ui/BranchExtra;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->a:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->e:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->f:Lio/branch/search/ui/ImageLoadingStrategy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/ui/BranchEntity$AppEntity;->j:Lio/branch/search/ui/BranchExtra;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
