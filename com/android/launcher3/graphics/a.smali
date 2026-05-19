.class public final synthetic Lcom/android/launcher3/graphics/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/a;->a:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/a;->a:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-static {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck;->a(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V

    return-void
.end method
