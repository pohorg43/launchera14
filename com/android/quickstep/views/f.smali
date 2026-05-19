.class public final synthetic Lcom/android/quickstep/views/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/views/f;

.field public static final synthetic b:Lcom/android/quickstep/views/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/f;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/views/f;->a:Lcom/android/quickstep/views/f;

    new-instance v0, Lcom/android/quickstep/views/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/f;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/views/f;->b:Lcom/android/quickstep/views/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateStartScrollSpringParams(Lcom/android/launcher3/util/OverScroller$SpringParams;)V
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->m0(Lcom/android/launcher3/util/OverScroller$SpringParams;)V

    return-void
.end method
