.class public abstract Le8/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/n$b;
    }
.end annotation


# static fields
.field public static final a:Le8/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Le8/n$a;

    invoke-direct {v0}, Le8/n$a;-><init>()V

    sput-object v0, Le8/n;->a:Le8/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
