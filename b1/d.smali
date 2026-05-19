.class public Lb1/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb1/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/d$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lb1/d$a;


# direct methods
.method public constructor <init>(Lb1/d$a;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lb1/d;->a:J

    iput-object p1, p0, Lb1/d;->b:Lb1/d$a;

    return-void
.end method
