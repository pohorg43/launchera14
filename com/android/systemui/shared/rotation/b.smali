.class public final synthetic Lcom/android/systemui/shared/rotation/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->a:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    iput p2, p0, Lcom/android/systemui/shared/rotation/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/b;->a:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    iget p0, p0, Lcom/android/systemui/shared/rotation/b;->b:I

    invoke-static {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->a(Lcom/android/systemui/shared/rotation/RotationButtonController$1;I)V

    return-void
.end method
