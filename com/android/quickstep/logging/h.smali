.class public final synthetic Lcom/android/quickstep/logging/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/h;->a:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/logging/h;->a:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-void
.end method
