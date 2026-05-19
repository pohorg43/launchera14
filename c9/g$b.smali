.class public Lc9/g$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lc9/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc9/g;

    invoke-direct {v0}, Lc9/g;-><init>()V

    sput-object v0, Lc9/g$b;->a:Lc9/g;

    return-void
.end method
