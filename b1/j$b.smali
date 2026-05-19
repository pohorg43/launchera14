.class public final Lb1/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb1/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/j$b;->a:Landroid/util/DisplayMetrics;

    return-void
.end method
