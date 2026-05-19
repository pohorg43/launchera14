.class public interface abstract Lx6/e$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Lx6/e$f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/e$f$a;

    invoke-direct {v0}, Lx6/e$f$a;-><init>()V

    sput-object v0, Lx6/e$f;->a:Lx6/e$f;

    return-void
.end method
