.class public final Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final tracePrefixProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->tracePrefixProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .registers 2

    new-instance v0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->tracePrefixProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->newInstance(Ljava/lang/String;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->get()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    move-result-object p0

    return-object p0
.end method
