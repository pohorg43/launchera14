.class public final synthetic Lcom/android/quickstep/util/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/util/p;

    invoke-direct {v0}, Lcom/android/quickstep/util/p;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/p;->a:Lcom/android/quickstep/util/p;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;

    invoke-interface {p1}, Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;->onScreenTurnedOn()V

    return-void
.end method
