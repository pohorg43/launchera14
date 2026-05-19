.class public final synthetic Lcom/android/launcher3/search/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/search/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/search/b;

    invoke-direct {v0}, Lcom/android/launcher3/search/b;-><init>()V

    sput-object v0, Lcom/android/launcher3/search/b;->a:Lcom/android/launcher3/search/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->a(Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method
