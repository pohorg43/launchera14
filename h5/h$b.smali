.class public final Lh5/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Li5/e0;

.field public final b:Z


# direct methods
.method public constructor <init>(Li5/e0;Z)V
    .registers 4

    const-string v0, "ownerModuleDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/h$b;->a:Li5/e0;

    iput-boolean p2, p0, Lh5/h$b;->b:Z

    return-void
.end method
